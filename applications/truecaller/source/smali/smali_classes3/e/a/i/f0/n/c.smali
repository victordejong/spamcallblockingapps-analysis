.class public final Le/a/i/f0/n/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/i/f0/n/d;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public final c:Le/a/i/f0/h;


# direct methods
.method public constructor <init>(Le/a/i/f0/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "houseAds"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/f0/n/c;->c:Le/a/i/f0/h;

    .line 2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    iput-object p1, p0, Le/a/i/f0/n/c;->a:Ljava/util/List;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Le/a/i/f0/n/c;->b:I

    return-void
.end method
