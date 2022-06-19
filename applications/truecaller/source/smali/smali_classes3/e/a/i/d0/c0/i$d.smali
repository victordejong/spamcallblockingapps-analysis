.class public final Le/a/i/d0/c0/i$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/c0/i;-><init>(Landroid/content/Context;Le/a/i/c/d/l;Ljava/util/Map;Le/a/p5/c;Le/a/p5/u;Le/a/q2/a;Le/a/p5/g;Le/a/i/d0/z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/i/d0/c0/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/i/d0/c0/i;


# direct methods
.method public constructor <init>(Le/a/i/d0/c0/i;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/c0/i$d;->b:Le/a/i/d0/c0/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/ads/db/AdsDatabase;->c:Lcom/truecaller/ads/db/AdsDatabase$a;

    iget-object v1, p0, Le/a/i/d0/c0/i$d;->b:Le/a/i/d0/c0/i;

    .line 2
    iget-object v1, v1, Le/a/i/d0/c0/i;->d:Landroid/content/Context;

    .line 3
    invoke-virtual {v0, v1}, Lcom/truecaller/ads/db/AdsDatabase$a;->a(Landroid/content/Context;)Lcom/truecaller/ads/db/AdsDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/ads/db/AdsDatabase;->f()Le/a/i/d0/c0/m;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
