{% snapshot T_OFFER_PRICE_COPY_HIST %}

{{
   config(
       target_schema='WORKSPACE_78281286',
       unique_key='"offer_price_id"',
       strategy='timestamp',
       updated_at='"change_date"',
       invalidate_hard_deletes=True
   )
}}

select * FROM KEBOOLA_11604.WORKSPACE_78281286.T_OFFER_PRICE_COPY

{% endsnapshot %}