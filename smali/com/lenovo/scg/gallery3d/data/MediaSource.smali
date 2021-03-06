.class public abstract Lcom/lenovo/scg/gallery3d/data/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaSource"


# instance fields
.field private mPrefix:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/MediaSource;->mPrefix:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public abstract createMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultSetOf(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 1
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/MediaSource;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTargetCacheSize()J
    .locals 2

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTotalUsedCacheSize()J
    .locals 2

    .prologue
    .line 57
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 9
    .param p2, "consumer"    # Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;",
            ">;",
            "Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 84
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 85
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;

    .line 87
    .local v3, "pid":Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;
    sget-object v6, Lcom/lenovo/scg/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 88
    :try_start_0
    iget-object v5, v3, Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/Path;->getObject()Lcom/lenovo/scg/gallery3d/data/MediaObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 89
    .local v2, "obj":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    if-nez v2, :cond_0

    .line 91
    :try_start_1
    iget-object v5, v3, Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/data/MediaSource;->createMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 96
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    if-eqz v2, :cond_1

    .line 98
    iget v5, v3, Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;->id:I

    check-cast v2, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .end local v2    # "obj":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    invoke-interface {p2, v5, v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;->consume(ILcom/lenovo/scg/gallery3d/data/MediaItem;)V

    .line 84
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .restart local v2    # "obj":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    :catch_0
    move-exception v4

    .line 93
    .local v4, "th":Ljava/lang/Throwable;
    :try_start_3
    const-string v5, "MediaSource"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot create media object: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 96
    .end local v2    # "obj":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    .end local v4    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 101
    .end local v3    # "pid":Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;
    :cond_2
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
