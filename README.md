# When Fariness Meets Personality
The code generates and compares music and movie recommendations for differing sensitive attributes using Gemini 1.5 Flash using the FaiRLLM benchmak by Zhang et al. You can find their paper here: https://arxiv.org/abs/2305.07609 and their code here: https://github.com/jizhi-zhang/FaiRLLM. Huge thank you to Zhang et al!

run run_music.sh or run_movie.sh respectively.

```
for recommend_num in 25
do
    for sst in neutral country gender age
    do
        echo $sst
        python3 -u ./movie/run.py \
        --director_list ./movie/director.csv \
        --sst_class $sst \
        --recommend_num $recommend_num \
        --save_folder ./movie/top_${recommend_num}/${sst}/ \
        --sst_json_path ./sst_json.json \
        --api_key your_api_key
    done
done
```

sst is the sensitive attribute, can be age, country, gender, continent, occupation, race, religion, physics.
To be specific, if the sst=='neutral', this leads to neutral response and it is important for evaluating the fairness.

If you want to evaluate the fairness of Gemini 1.5 Flash using the generated data from Gemini 1.5 Flash, you can use process.ipynb
Before using process.ipynb, please check the following in the begining of process.ipynb:

```
# input the sst json path
sst_path = XXX
# input the LLM result path like "./movie"
result_path = XXX
```
