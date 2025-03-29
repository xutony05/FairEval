for recommend_num in 25
do
    for sst in french
    do
        echo $sst
        python3 -u ./movie/run.py \
        --director_list ./movie/director.csv \
        --sst_class $sst \
        --recommend_num $recommend_num \
        --save_folder ./movie/top_${recommend_num}/${sst}/ \
        --sst_json_path ./sst_json.json \
        --api_key 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
    done
done