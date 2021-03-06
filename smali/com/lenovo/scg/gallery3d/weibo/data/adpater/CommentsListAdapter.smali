.class public Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CommentsListAdapter.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;
    }
.end annotation


# instance fields
.field private mArrItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->mContext:Landroid/content/Context;

    .line 43
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->mArrItems:Ljava/util/ArrayList;

    .line 193
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->mHandler:Landroid/os/Handler;

    .line 46
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->mContext:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->initSCGTypeface(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method private getIntentForComment(JJ)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "cid"    # J

    .prologue
    .line 263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 264
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 265
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 266
    const-string v1, "cid"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 267
    const-string v1, "isreply"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 269
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->mArrItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->mArrItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDataItem(I)Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->mArrItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    return-object v0
.end method

.method public getDataItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->mArrItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 74
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 29
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 89
    const/4 v15, 0x0

    .line 90
    .local v15, "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;
    if-nez p2, :cond_5

    .line 91
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v16

    .line 92
    .local v16, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f04019f

    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .line 93
    .local v25, "v":Landroid/view/View;
    new-instance v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;

    .end local v15    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;
    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;)V

    .line 95
    .restart local v15    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;
    const v8, 0x7f10034b

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;->imageView:Landroid/widget/ImageView;

    .line 96
    const v8, 0x7f1009fb

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;->contentView:Landroid/widget/TextView;

    .line 97
    const v8, 0x7f1003e2

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;->nameView:Landroid/widget/TextView;

    .line 98
    const v8, 0x7f1009fa

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;->replyView:Landroid/widget/ImageView;

    .line 99
    const v8, 0x7f1009fd

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;->time:Landroid/widget/TextView;

    .line 100
    const v8, 0x7f1009fe

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;->source:Landroid/widget/TextView;

    .line 102
    move-object/from16 p2, v25

    .line 103
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 105
    const v8, 0x7f1009f9

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    invoke-static {v8}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 110
    .end local v16    # "inflater":Landroid/view/LayoutInflater;
    .end local v25    # "v":Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->mArrItems:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 112
    .local v17, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    iget-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;->replyView:Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 113
    iget-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;->nameView:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 114
    iget-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;->nameView:Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_0
    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v18

    .line 120
    .local v18, "mWeiboerName":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v8

    new-array v0, v8, [C

    move-object/from16 v20, v0

    .line 121
    .local v20, "namechar":[C
    const/4 v8, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v9, v1, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 123
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    .line 139
    .local v19, "nameLenth":I
    iget-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;->contentView:Landroid/widget/TextView;

    if-eqz v8, :cond_1

    .line 143
    :try_start_0
    iget-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;->contentView:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getContent()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v9, v10, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;->parseText(Ljava/lang/String;Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_1
    :goto_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 153
    .local v6, "lNow":J
    new-instance v13, Ljava/util/Date;

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getCreatedTime()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v13, v8}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    .line 154
    .local v13, "dt":Ljava/util/Date;
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 155
    .local v4, "lOld":J
    const-wide/32 v8, 0xea60

    const/high16 v10, 0x40000

    invoke-static/range {v4 .. v10}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v12

    .line 156
    .local v12, "dateValue":Ljava/lang/CharSequence;
    iget-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;->time:Landroid/widget/TextView;

    if-eqz v8, :cond_2

    .line 157
    iget-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;->time:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    .end local v4    # "lOld":J
    .end local v6    # "lNow":J
    .end local v12    # "dateValue":Ljava/lang/CharSequence;
    .end local v13    # "dt":Ljava/util/Date;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f0735

    const/4 v8, 0x1

    new-array v0, v8, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getSource()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getSource()Ljava/lang/String;

    move-result-object v8

    :goto_3
    aput-object v8, v26, v27

    move-object/from16 v0, v26

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 165
    .local v23, "sSource":Ljava/lang/String;
    iget-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;->source:Landroid/widget/TextView;

    if-eqz v8, :cond_3

    .line 166
    iget-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;->source:Landroid/widget/TextView;

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v22

    .line 172
    .local v22, "sHeadUrl":Ljava/lang/String;
    const/4 v11, 0x0

    .line 173
    .local v11, "bmpHead":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v22

    invoke-virtual {v8, v0, v9}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getUserHead(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 174
    if-eqz v11, :cond_7

    .line 175
    iget-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;->imageView:Landroid/widget/ImageView;

    if-eqz v8, :cond_4

    .line 176
    iget-object v8, v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 179
    :cond_4
    const-string v8, "exist,head url = %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v22, v9, v10

    invoke-static {v8, v9}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    :goto_4
    return-object p2

    .line 107
    .end local v11    # "bmpHead":Landroid/graphics/Bitmap;
    .end local v17    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v18    # "mWeiboerName":Ljava/lang/String;
    .end local v19    # "nameLenth":I
    .end local v20    # "namechar":[C
    .end local v22    # "sHeadUrl":Ljava/lang/String;
    .end local v23    # "sSource":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;
    check-cast v15, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;

    .restart local v15    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$ViewCache;
    goto/16 :goto_0

    .line 144
    .restart local v17    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .restart local v18    # "mWeiboerName":Ljava/lang/String;
    .restart local v19    # "nameLenth":I
    .restart local v20    # "namechar":[C
    :catch_0
    move-exception v14

    .line 145
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 159
    .end local v14    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v14

    .line 160
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 163
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v28, 0x7f0f073d

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 181
    .restart local v11    # "bmpHead":Landroid/graphics/Bitmap;
    .restart local v22    # "sHeadUrl":Ljava/lang/String;
    .restart local v23    # "sSource":Ljava/lang/String;
    :cond_7
    const-string/jumbo v8, "not exist,head url = %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v22, v9, v10

    invoke-static {v8, v9}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    sget-object v8, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;->POOL_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;

    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getInstance(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;)Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    move-result-object v21

    .line 183
    .local v21, "pool":Lcom/lenovo/scg/gallery3d/net/NetThreadPool;
    sget-object v8, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    sget-object v9, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getTask(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;)Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    move-result-object v24

    .line 184
    .local v24, "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->addNetTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;)V

    .line 186
    sget-object v8, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_BYTES:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    const/4 v9, 0x2

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v8, v1, v9}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->setTaskPara(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 187
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->runTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p1, "resultType"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    .param p2, "objData"    # Ljava/lang/Object;
    .param p3, "userContext"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 207
    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    if-eq p1, v7, :cond_1

    .line 208
    const-string v7, "RepostsListAdapter onTaskDone get bitmap error,result=%s"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    .end local p2    # "objData":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 212
    .restart local p2    # "objData":Ljava/lang/Object;
    :cond_1
    :try_start_0
    check-cast p2, [B

    .end local p2    # "objData":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [B

    move-object v2, v0

    .line 213
    .local v2, "data":[B
    move-object v0, p3

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object v4, v0

    .line 214
    .local v4, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v6

    .line 215
    .local v6, "sUrl":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, "sName":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v7

    invoke-virtual {v7, v2, v5, v6}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->writePictureToFile([BLjava/lang/String;Ljava/lang/String;)Z

    .line 218
    const/4 v7, 0x0

    array-length v8, v2

    const/4 v9, 0x2

    invoke-static {v2, v7, v8, v9}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeByteArray([BIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 219
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 220
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v7

    invoke-virtual {v7, v1, v6, v5}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putUserHead(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "data":[B
    .end local v4    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v5    # "sName":Ljava/lang/String;
    .end local v6    # "sUrl":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 224
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "RepostsListAdapter onTaskDone write or decode error: %s"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public realeaseCache()V
    .locals 6

    .prologue
    .line 253
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->mArrItems:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 260
    :cond_0
    return-void

    .line 255
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->mArrItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 256
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 257
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->mArrItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 258
    .local v1, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearUserHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "arrItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->mArrItems:Ljava/util/ArrayList;

    .line 250
    return-void
.end method
