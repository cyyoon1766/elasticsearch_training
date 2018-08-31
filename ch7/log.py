# -*- coding: utf-8 -*-
#!/usr/bin/python
import time
import datetime
import pytz
import numpy
import random
import gzip
import zipfile
import sys
import argparse
from faker import Faker
from random import randrange
from tzlocal import get_localzone
local = get_localzone()
 
 
class switch(object):
    def __init__(self, value):
        self.value = value
        self.fall = False
 
    def __iter__(self):
        """Return the match method once, then stop"""
        yield self.match
        raise StopIteration
 
    def match(self, *args):
        """Indicate whether or not to enter a case suite"""
        if self.fall or not args:
            return True
        elif self.value in args: # changed for v1.5, see below
            self.fall = True
            return True
        else:
            return False
parser = argparse.ArgumentParser(__file__, description="Fake  Log Generator")
 
parser = argparse.ArgumentParser(__file__, description="Fake  Log Generator")
parser.add_argument("--output", "-o", dest='output_type', help="Write to a Log file, a gzip file or to STDOUT", choices=['LOG','GZ','CONSOLE'] )
parser.add_argument("--log-format", "-l", dest='log_format', help="Log format, Common or Extended Log Format ", choices=['CLF','ELF'], default="ELF" )
parser.add_argument("--num", "-n", dest='num_lines', help="Number of lines to generate (0 for infinite)", type=int, default=1)
parser.add_argument("--prefix", "-p", dest='file_prefix', help="Prefix the output file name", type=str)
parser.add_argument("--sleep", "-s", help="Sleep this long between lines (in seconds)", default=0.0, type=float)
 
args = parser.parse_args()
 
log_lines = args.num_lines
file_prefix = args.file_prefix
output_type = args.output_type
log_format = args.log_format
 
faker = Faker()
 
timestr = time.strftime("%Y%m%d-%H%M%S")
otime = datetime.datetime.now()
 
#outFileName = 'access_log_'+timestr+'.log' if not file_prefix else file_prefix+'_access_log_'+timestr+'.log'
outFileName = 'mobile_page.log'
 
for case in switch(output_type):
    if case('LOG'):
        f = open(outFileName,'w')
        break
    if case('GZ'):
        f = gzip.open(outFileName+'.gz','w')
        break
    if case('CONSOLE'): pass
    if case():
        f = sys.stdout
 
response=["200","404","500","301"]
splychnl=["App", "Web", "Mobile"]
verb=["GET","POST","DELETE","PUT"]
 
coCd=["남성","여성"]
resources=["/list","/wp-content","/wp-admin","/explore","/search/tag/list","/app/main/posts","/posts/posts/explore","/apps/cart.jsp?appID="]
loginId=["ycy1766","ychang","jchoi","mwchoi","nices96","khoj","nhhan","kjeon","jyson", "cobain"]
ualist = [faker.firefox, faker.chrome, faker.safari, faker.internet_explorer, faker.opera]
categoryId=["네이버가격비교","다음가격비교","광고팝업","직접접속","외부링크"]
catalogId= ["구매","취소","장바구니추가","장바구니제거"]
pageTitle=["상품상세1","상품상세2","상품상세3"]
goodsName=["슈퍼푸드 아보카도 중과(170g)*7과 / 2set 구매시 2과 추가","썬키스트 고당도 카라카라 오렌지 특대과 7과 (1.9kg) / 2세트 구매시 추가 2과 증정","우>삼겹 500g + 대패목살 500g / 무료배송","맥심 모카골드 마일드 12g * 170개입", "(단)일품 액상 조미료 참 참치액 3병","그랜드비프스테이크 / 쁘띠텐더 스테이크 / 소고기스테이크 외","원할머니 인기 탕 3종 1+1+1 /육개장, 소고기무국, 설렁탕","냉동삼겹","오이비누","생수 500ml"]
goodsCd=["26758168","26457855","26457865","26457845","26457835","26457815","26451855"]
resultCd=["23","42","51","31","42","52","23","22","55","26"]
resultMsg=["정상","비정상"]
flag = True
while (flag):
    if args.sleep:
        increment = datetime.timedelta(seconds=args.sleep)
    else:
        increment = datetime.timedelta(seconds=random.randint(30, 300))
    otime += increment
 
    ip = faker.ipv4()
    dt = otime.strftime('%d/%b/%Y:%H:%M:%S')
    tz = datetime.datetime.now(local).strftime('%z')
    vrb = numpy.random.choice(verb,p=[0.6,0.1,0.1,0.2])
    resultcd = numpy.random.choice(resultCd,p=[0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1]) 
    resultmsg = numpy.random.choice(resultMsg,p=[0.98,0.02])
    pagetitle= numpy.random.choice(pageTitle,p=[0.6,0.1,0.3])
    catalogid = numpy.random.choice(catalogId,p=[0.6,0.1,0.1,0.2])
    categoryid = numpy.random.choice(categoryId,p=[0.3,0.2,0.2,0.1,0.2])
    cocd = numpy.random.choice(coCd,p=[0.6,0.4])
    spl = numpy.random.choice(splychnl,p=[0.6,0.2,0.2])
    goodsname = numpy.random.choice(goodsName,p=[0.3,0.2,0.1,0.1,0.05,0.05,0.05,0.05,0.05,0.05])
    goodscd = numpy.random.choice(goodsCd,p=[0.3,0.2,0.1,0.2,0.05,0.05,0.1])
    loid = numpy.random.choice(loginId,p=[0.3,0.01,0.09,0.1,0.1,0.1,0.1,0.1,0.05,0.05])
    goodscd = numpy.random.choice(goodsCd,p=[0.3,0.2,0.1,0.2,0.05,0.05,0.1])
    loid = numpy.random.choice(loginId,p=[0.3,0.01,0.09,0.1,0.1,0.1,0.1,0.1,0.05,0.05])
    uri = random.choice(resources)
    if uri.find("apps")>0:
        uri += str(random.randint(1000,10000))
 
    resp = numpy.random.choice(response,p=[0.9,0.04,0.02,0.04])
    byt = int(random.gauss(5000,50))
    referer = faker.uri()
    useragent = numpy.random.choice(ualist,p=[0.5,0.3,0.1,0.05,0.05] )()
    if log_format == "CLF":
        f.write('%s - - [%s %s] "%s %s HTTP/1.0" %s %s\n' % (ip,dt,tz,vrb,uri,resp,byt))
    elif log_format == "ELF":
        #f.write("APP_VIEW|"'%s - - [%s %s] "%s %s HTTP/1.0" %s %s "%s" "%s"\n' % (ip,dt,tz,vrb,uri,resp,byt,referer,useragent))
        f.write('%s|%s|%s|%s|%s|%s|%s|%s|%s|%s|%s \n' % (ip,spl,loid,cocd,catalogid,categoryid,pagetitle,goodsname,goodscd,resultcd,resultmsg))
    f.flush()
 
 
    log_lines = log_lines - 1
    flag = False if log_lines == 0 else True
    if args.sleep:
        time.sleep(args.sleep)
