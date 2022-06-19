.class public final Ln3/z/d1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/z/d1;
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
.field public final a:Ln3/z/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/g1<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field

.field public final b:Ln3/z/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/l2<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/z/g1;Ln3/z/l2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/g1<",
            "TKey;TValue;>;",
            "Ln3/z/l2<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/z/d1$a;->a:Ln3/z/g1;

    iput-object p2, p0, Ln3/z/d1$a;->b:Ln3/z/l2;

    return-void
.end method
