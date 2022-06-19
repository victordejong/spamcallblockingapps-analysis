.class public Ln3/m0/c0/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/m0/c0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ln3/m0/c0/r/a;

.field public c:Ln3/m0/c0/t/x/a;

.field public d:Ln3/m0/c;

.field public e:Landroidx/work/impl/WorkDatabase;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/m0/c0/e;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroidx/work/WorkerParameters$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln3/m0/c;Ln3/m0/c0/t/x/a;Ln3/m0/c0/r/a;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/work/WorkerParameters$a;

    invoke-direct {v0}, Landroidx/work/WorkerParameters$a;-><init>()V

    iput-object v0, p0, Ln3/m0/c0/o$a;->h:Landroidx/work/WorkerParameters$a;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ln3/m0/c0/o$a;->a:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Ln3/m0/c0/o$a;->c:Ln3/m0/c0/t/x/a;

    .line 5
    iput-object p4, p0, Ln3/m0/c0/o$a;->b:Ln3/m0/c0/r/a;

    .line 6
    iput-object p2, p0, Ln3/m0/c0/o$a;->d:Ln3/m0/c;

    .line 7
    iput-object p5, p0, Ln3/m0/c0/o$a;->e:Landroidx/work/impl/WorkDatabase;

    .line 8
    iput-object p6, p0, Ln3/m0/c0/o$a;->f:Ljava/lang/String;

    return-void
.end method
