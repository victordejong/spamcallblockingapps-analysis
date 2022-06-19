.class public abstract Le/a/a/c/k/b;
.super Le/a/o2/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/o2/d<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final b:Le/a/a/c/w3;


# direct methods
.method public constructor <init>(Le/a/a/c/w3;)V
    .locals 1

    const-string v0, "items"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/d;-><init>()V

    iput-object p1, p0, Le/a/a/c/k/b;->b:Le/a/a/c/w3;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/k/b;->b:Le/a/a/c/w3;

    invoke-interface {v0}, Le/a/a/c/w3;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/k/b;->b:Le/a/a/c/w3;

    invoke-interface {v0, p1}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/a/g/l0/a;->getId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method
