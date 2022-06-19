.class public final Ln3/z/k1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/z/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lq3/a/b3/c;

.field public final b:Ln3/z/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/k1<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field

.field public final c:Ln3/z/a2;


# direct methods
.method public constructor <init>(Ln3/z/a2;)V
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/z/k1$a;->c:Ln3/z/a2;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lq3/a/b3/g;->a(ZI)Lq3/a/b3/c;

    move-result-object v0

    iput-object v0, p0, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 3
    new-instance v0, Ln3/z/k1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ln3/z/k1;-><init>(Ln3/z/a2;Ls1/z/c/f;)V

    iput-object v0, p0, Ln3/z/k1$a;->b:Ln3/z/k1;

    return-void
.end method
