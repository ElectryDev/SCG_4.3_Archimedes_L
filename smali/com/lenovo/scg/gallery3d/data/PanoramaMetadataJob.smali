.class public Lcom/lenovo/scg/gallery3d/data/PanoramaMetadataJob;
.super Ljava/lang/Object;
.source "PanoramaMetadataJob.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
        "<",
        "Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/PanoramaMetadataJob;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/PanoramaMetadataJob;->mUri:Landroid/net/Uri;

    .line 36
    return-void
.end method


# virtual methods
.method public run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;
    .locals 2
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/PanoramaMetadataJob;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/PanoramaMetadataJob;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/util/LightCycleHelper;->getPanoramaMetadata(Landroid/content/Context;Landroid/net/Uri;)Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/data/PanoramaMetadataJob;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Lcom/lenovo/scg/gallery3d/util/LightCycleHelper$PanoramaMetadata;

    move-result-object v0

    return-object v0
.end method
