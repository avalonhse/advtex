import torch

print(torch.cuda.is_available())
print(torch.cuda.device_count())

print(torch.cuda.current_device())

print("Name =", torch.cuda.get_device_name(0))