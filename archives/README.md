# 归档材料说明

## 文件说明

* `index.md.gpg` 是加密后的索引文件，存储着序号和友链的对应关系。
* `meta.*.tar.txt` 包含了可以公开的一些元数据。
* `*.tar.gpg` 是使用公钥签名并使用 AES-256 加密的 tar 包。
* `*.tar.asc` 是解密后的 tar 包的签名。

## 解密方法

```shell
# 解密 tar 包并验证签名
gpg --output xxx.tar --decrypt xxx.tar.gpg

# 验证原始文件签名
gpg --verify xxx.sig xxx.tar

# 解压 tar 包
tar -xf xxx.tar
```

## 公钥列表

当你要验证签名的时候你需要导入 GPG 公钥。

### 一期公钥

```
-----BEGIN PGP PUBLIC KEY BLOCK-----

mJMEYWvVWxMFK4EEACMEIwQAY3sDegIUI2cqcPnS0SP72ZKAW/KiEJYkodBe3Qo2
fzeARHQGEveY+kVyRK4XXDsVLMiXOCEtx3l2SNUn/ZcbGFMAQT4fAllipZYmmCrr
fjendolzRx2ad4vGOFfCUuiF4OSlsFQgNm/0BKlf7dZtAYy+iwc2vrv+7WadncAz
j6EDA5a0JEFERC1TUCAoR2l0aHViKSA8YWRkX3NwQG91dGxvb2suY29tPojSBBMT
CgA4FiEEl5mPXXsTt4znHsMX8g6gLpDe5/UFAmFr1VsCGwMFCwkIBwIGFQoJCAsC
BBYCAwECHgECF4AACgkQ8g6gLpDe5/US5wIHd5dONh9REKgsA4K1CYwVPNEBBtOv
sp81og5TT1z+QlQHk/cNn3xFbmWQf+TpcRjize6GDAyop9uiujYmtbdX7a0CB1le
lRrJnJBTVX+KD8lXl/Uu8kqqMmPhQaya27KGKnO2j0zEdbX1Xqo4S9PGQbjKF+KZ
wB7YuMLlpwVHRbBXAQlWuDMEYWvWGxYJKwYBBAHaRw8BAQdA4A8SzKHMIefpt7ox
uo7rSaTdHrTHA0prCd1NjxMFYSqJATcEGBMKACYWIQSXmY9dexO3jOcewxfyDqAu
kN7n9QUCYWvWGwIbAgUJAeEzgACBCRDyDqAukN7n9XYgBBkWCAAdFiEEKGLDGbsy
GqVTTK3/L3hXYPAtdXwFAmFr1hsACgkQL3hXYPAtdXz0PAEA77FogCR3HLHyVoOd
YOgBDS9WbPkDy26w/ynvnre7vakA/A/1mk3S0MUIx6ZduEpha91KgjU59vpfKf76
iaTtDt4Ir9oCCKd5ja5otF41XqIZ8ZYtMimlXL8hzQ0aeZRfIPHCA6u0MN1igLjN
YT0ZRw48kpX7XaK0GwCdqH4vaameoQb/AnPnAgdccQmrJMsuXAG0gPZlvbPkx5Dw
cKaDQp1qQgbvJdxT7DwB24B4OLTyiPxp2DxoIaXF5gqrv3elaRPqCkMp4kQHoA==
=U1E6
-----END PGP PUBLIC KEY BLOCK-----
```
