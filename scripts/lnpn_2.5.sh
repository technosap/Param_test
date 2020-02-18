#!/bin/sh

#SBATCH -N 1
#SBATCH --ntasks-per-node=48
#SBATCH --time=12:00:00
#SBATCH --job-name=tensorflow
#SBATCH --error=out/job.%J.err
#SBATCH --output=out/job.%J.out
#SBATCH --partition=standard
#SBATCH -a 0-9

cd $SLURM_SUBMIT_DIR

file="/home/collins/Param_test/label"
name=$(cat "$file")
name="${name}_2.5"

module load python/3.7
srun -N 1 python /home/collins/Param_test/initExperiment.py '/home/collins/Param_test/Od/OdorA_High.odor' '/home/collins/Param_test/Op/Dur_6000_OdorDur_1000.protocol' '/home/collins/Param_test/Lc/Locust_A.locust' $SLURM_ARRAY_TASK_ID $name '2.5'
sleep 5 && echo "Moving on..."
srun -N 1 python /home/collins/Param_test/initExperiment.py '/home/collins/Param_test/Od/OdorB_High.odor' '/home/collins/Param_test/Op/Dur_6000_OdorDur_1000.protocol' '/home/collins/Param_test/Lc/Locust_A.locust' $SLURM_ARRAY_TASK_ID $name '2.5'
sleep 5 && echo "Moving on..."
srun -N 1 python /home/collins/Param_test/initExperiment.py '/home/collins/Param_test/Od/OdorC_High.odor' '/home/collins/Param_test/Op/Dur_6000_OdorDur_1000.protocol' '/home/collins/Param_test/Lc/Locust_A.locust' $SLURM_ARRAY_TASK_ID $name '2.5'
sleep 5 && echo "Moving on..."
srun -N 1 python /home/collins/Param_test/initExperiment.py '/home/collins/Param_test/Od/OdorA_High.odor' '/home/collins/Param_test/Op/Dur_6000_OdorDur_1000.protocol' '/home/collins/Param_test/Lc/Locust_B.locust' $SLURM_ARRAY_TASK_ID $name '2.5'
sleep 5 && echo "Moving on..."
srun -N 1 python /home/collins/Param_test/initExperiment.py '/home/collins/Param_test/Od/OdorB_High.odor' '/home/collins/Param_test/Op/Dur_6000_OdorDur_1000.protocol' '/home/collins/Param_test/Lc/Locust_B.locust' $SLURM_ARRAY_TASK_ID $name '2.5'
sleep 5 && echo "Moving on..."
srun -N 1 python /home/collins/Param_test/initExperiment.py '/home/collins/Param_test/Od/OdorC_High.odor' '/home/collins/Param_test/Op/Dur_6000_OdorDur_1000.protocol' '/home/collins/Param_test/Lc/Locust_B.locust' $SLURM_ARRAY_TASK_ID $name '2.5'
sleep 5 && echo "Moving on..."
srun -N 1 python /home/collins/Param_test/initExperiment.py '/home/collins/Param_test/Od/OdorA_High.odor' '/home/collins/Param_test/Op/Dur_6000_OdorDur_1000.protocol' '/home/collins/Param_test/Lc/Locust_C.locust' $SLURM_ARRAY_TASK_ID $name '2.5'
sleep 5 && echo "Moving on..."
srun -N 1 python /home/collins/Param_test/initExperiment.py '/home/collins/Param_test/Od/OdorB_High.odor' '/home/collins/Param_test/Op/Dur_6000_OdorDur_1000.protocol' '/home/collins/Param_test/Lc/Locust_C.locust' $SLURM_ARRAY_TASK_ID $name '2.5'
sleep 5 && echo "Moving on..."
srun -N 1 python /home/collins/Param_test/initExperiment.py '/home/collins/Param_test/Od/OdorC_High.odor' '/home/collins/Param_test/Op/Dur_6000_OdorDur_1000.protocol' '/home/collins/Param_test/Lc/Locust_C.locust' $SLURM_ARRAY_TASK_ID $name '2.5'
sleep 5 && echo "Done"

