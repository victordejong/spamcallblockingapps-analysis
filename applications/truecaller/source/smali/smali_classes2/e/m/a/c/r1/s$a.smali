.class public final Le/m/a/c/r1/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/r1/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Le/m/a/c/r1/s;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Le/m/a/c/r1/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput-object p1, p0, Le/m/a/c/r1/s$a;->a:Landroid/os/Handler;

    .line 4
    iput-object p2, p0, Le/m/a/c/r1/s$a;->b:Le/m/a/c/r1/s;

    return-void
.end method


# virtual methods
.method public a(IIIF)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/m/a/c/r1/s$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v7, Le/m/a/c/r1/g;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Le/m/a/c/r1/g;-><init>(Le/m/a/c/r1/s$a;IIIF)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
