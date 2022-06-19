.class public final Ln3/z/b2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/z/b2$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final c:Ln3/z/h3;

.field public static final d:Ln3/z/b2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/b2<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ln3/z/b2$b;


# instance fields
.field public final a:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "Ln3/z/c1<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final b:Ln3/z/h3;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ln3/z/b2$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln3/z/b2$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Ln3/z/b2;->e:Ln3/z/b2$b;

    .line 1
    new-instance v0, Ln3/z/b2$a;

    invoke-direct {v0}, Ln3/z/b2$a;-><init>()V

    sput-object v0, Ln3/z/b2;->c:Ln3/z/h3;

    .line 2
    new-instance v1, Ln3/z/b2;

    .line 3
    sget-object v2, Ln3/z/c1$b;->g:Ln3/z/c1$b$a;

    .line 4
    sget-object v2, Ln3/z/c1$b;->f:Ln3/z/c1$b;

    .line 5
    new-instance v3, Lq3/a/x2/k;

    invoke-direct {v3, v2}, Lq3/a/x2/k;-><init>(Ljava/lang/Object;)V

    .line 6
    invoke-direct {v1, v3, v0}, Ln3/z/b2;-><init>(Lq3/a/x2/f;Ln3/z/h3;)V

    sput-object v1, Ln3/z/b2;->d:Ln3/z/b2;

    return-void
.end method

.method public constructor <init>(Lq3/a/x2/f;Ln3/z/h3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/x2/f<",
            "+",
            "Ln3/z/c1<",
            "TT;>;>;",
            "Ln3/z/h3;",
            ")V"
        }
    .end annotation

    const-string v0, "flow"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/z/b2;->a:Lq3/a/x2/f;

    iput-object p2, p0, Ln3/z/b2;->b:Ln3/z/h3;

    return-void
.end method
