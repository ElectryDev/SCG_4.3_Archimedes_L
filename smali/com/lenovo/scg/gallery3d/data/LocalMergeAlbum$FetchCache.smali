.class Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;
.super Ljava/lang/Object;
.source "LocalMergeAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchCache"
.end annotation


# instance fields
.field private mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field private mCacheRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStartPos:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V
    .locals 0
    .param p1, "baseSet"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 253
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 260
    const/4 v1, 0x0

    .line 261
    .local v1, "needLoading":Z
    const/4 v0, 0x0

    .line 262
    .local v0, "cache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    add-int/lit8 v2, v2, 0x40

    if-lt p1, v2, :cond_4

    .line 263
    :cond_0
    const/4 v1, 0x1

    .line 271
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 272
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 273
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    .line 274
    iput p1, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    .line 277
    :cond_2
    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    if-lt p1, v2, :cond_3

    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-lt p1, v2, :cond_5

    .line 278
    :cond_3
    const/4 v2, 0x0

    .line 281
    :goto_1
    return-object v2

    .line 265
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 266
    .restart local v0    # "cache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    if-nez v0, :cond_1

    .line 267
    const/4 v1, 0x1

    goto :goto_0

    .line 281
    :cond_5
    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    sub-int v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    goto :goto_1
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    .line 257
    return-void
.end method
