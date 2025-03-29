for recommend_num in 25
do
    for sst in neutral country french
    do
        echo $sst
        python3 -u ./movie/run.py \
        --director_list ./movie/director.csv \
        --sst_class $sst \
        --recommend_num $recommend_num \
        --save_folder ./movie/top_${recommend_num}/${sst}/ \
        --sst_json_path ./sst_json.json \
        --api_key AIzaSyBrsTp97rZ8292Qg8veQD3dj5Hjz5laGKQ
    done
done