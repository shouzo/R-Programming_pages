# 921 �a�_ - 1999 �~ 9 �� 21 �� 1 �� 47 �� 16 ��
# �Ὤ�a�_ - 2018 �~ 2 �� 6 �� 23 �� 50 �� 42 ��

# �N�ɶ������⦨"��"
year_s <- 31104000
month_s <- 2592000
day_s <- 86400
hour_s <- 3600
min_s <- 60
sec_s <- 1

# �N��Ӧa�_�o�ͪ��ɶ��A�i���ഫ��۴�
time1 <- as.POSIXct("1999-09-21 01:47:16", tz = "GMT")
time2 <- as.POSIXct("2018-02-06 23:50:42", tz = "GMT")

interval <- as.integer(time2) - as.integer(time1)


# �ഫ���
r_year <- as.integer(interval / year_s)
r_hour <- as.integer((interval %% day_s) / hour_s)
r_min <- as.integer((interval %% hour_s) / min_s)
r_sec <- as.integer((interval %% min_s))


# ��X���G
cat("�a�_�ɶ��۹j", r_year, "�~", "...", r_hour, "��", r_min, "��", r_sec, "��")