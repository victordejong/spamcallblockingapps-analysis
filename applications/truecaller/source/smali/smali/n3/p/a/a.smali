.class public Ln3/p/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/p/a/a$c;,
        Ln3/p/a/a$d;,
        Ln3/p/a/a$a;,
        Ln3/p/a/a$b;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ln3/p/a/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ln3/g/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/h<",
            "Ln3/p/a/a$b;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/p/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln3/p/a/a$a;

.field public d:Ln3/p/a/a$c;

.field public e:J

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ln3/p/a/a;->g:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/g/h;

    invoke-direct {v0}, Ln3/g/h;-><init>()V

    iput-object v0, p0, Ln3/p/a/a;->a:Ln3/g/h;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/p/a/a;->b:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ln3/p/a/a$a;

    invoke-direct {v0, p0}, Ln3/p/a/a$a;-><init>(Ln3/p/a/a;)V

    iput-object v0, p0, Ln3/p/a/a;->c:Ln3/p/a/a$a;

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Ln3/p/a/a;->e:J

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Ln3/p/a/a;->f:Z

    return-void
.end method

.method public static a()Ln3/p/a/a;
    .locals 2

    .line 1
    sget-object v0, Ln3/p/a/a;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ln3/p/a/a;

    invoke-direct {v1}, Ln3/p/a/a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/p/a/a;

    return-object v0
.end method
