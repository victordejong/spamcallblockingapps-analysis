.class public final Le/a/i/f0/l/k$i;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/f0/l/k;-><init>(Le/a/i/s;Ls1/w/f;Le/a/i/f0/l/o;Le/a/p5/c;Le/a/d4/c;Le/a/i/f0/a;Le/a/z4/a;Le/a/i/f0/k/a;Le/a/i/f0/l/p;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;Le/a/u3/g;Le/a/p5/u;Le/a/p5/g;Ljava/util/Map;Le/a/i/f0/j/a;Lo3/a;Lo3/a;Le/a/i/b0/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/Set<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final b:Le/a/i/f0/l/k$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/i/f0/l/k$i;

    invoke-direct {v0}, Le/a/i/f0/l/k$i;-><init>()V

    sput-object v0, Le/a/i/f0/l/k$i;->b:Le/a/i/f0/l/k$i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    const-string v0, "AFTERCALL"

    const-string v1, "DETAILS"

    const-string v2, "DETAILSVIEW"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->f0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
