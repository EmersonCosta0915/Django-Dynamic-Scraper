from distutils.core import setup

import os

setup(
    name='django-dynamic-scraper',
    version='0.4.0',
    description='Creating Scrapy scrapers via the Django admin interface',
    author='Holger Drewes',
    author_email='Holger.Drewes@gmail.com',
    url='https://github.com/holgerd77/django-dynamic-scraper/',
    long_description=open(os.path.join(os.path.dirname(__file__), 'README.rst')).read(),
    license='BSD License',
    platforms=['OS Independent'],
    packages=[
        'dynamic_scraper',
        'dynamic_scraper.spiders',
        'dynamic_scraper.utils',
        'dynamic_scraper.migrations',
        'dynamic_scraper.management',
        'dynamic_scraper.management.commands',
    ],
    #install_requires=[
    #    'Django>=1.4,<=1.6',
    #    'Scrapy>=0.20.0,<=0.24.0',
    #    
    #    'django-celery>=3.0.0', # Scheduling
    #    'pillow',
    #    'South',
    #],
    classifiers=[
        'Development Status :: 4 - Beta',
        'Environment :: Web Environment',
        'Framework :: Django',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: BSD License',
        'Operating System :: OS Independent',
        'Programming Language :: Python',
        'Topic :: Utilities',
    ],
)
