{{ config(schema="test_normalization", tags=["top-level-intermediate"]) }}
-- SQL model to build a hash column based on the values of this record
select
    ora_hash(
            'id' || '~' ||
            'currency' || '~' ||
            {{ quote('DATE') }} || '~' ||
            'timestamp_col' || '~' ||
            'hkd_special___characters' || '~' ||
            'hkd_special___characters_1' || '~' ||
            'nzd' || '~' ||
            'usd'
    ) as {{ quote('_AIRBYTE_EXCHANGE_RATE_HASHID') }},
    tmp.*
from {{ ref('exchange_rate_ab2') }} tmp
-- exchange_rate

