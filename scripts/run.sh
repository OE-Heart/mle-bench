export SUBMISSION_DIR=/home/submission
export LOGS_DIR=/home/logs
export CODE_DIR=/home/code
export AGENT_DIR=/home/agent

IMAGE_ID=$(docker build -q --no-cache --platform=linux/amd64 -t aide agents/aide --build-arg SUBMISSION_DIR=$SUBMISSION_DIR --build-arg LOGS_DIR=$LOGS_DIR --build-arg CODE_DIR=$CODE_DIR --build-arg AGENT_DIR=$AGENT_DIR)
echo $IMAGE_ID
python run_agent.py --agent-id aide --competition-set experiments/splits/tgs-salt-identification-challenge.txt --data-dir /newdisk1/oyx/mle-bench/data --gpu-device 2
# python run_agent.py --agent-id aide/o3-mini --competition-set experiments/splits/predict-volcanic-eruptions-ingv-oe.txt --data-dir /newdisk1/oyx/mle-bench/data --gpu-device 3
docker rmi $IMAGE_ID
