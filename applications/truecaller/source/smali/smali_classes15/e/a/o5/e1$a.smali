.class public Le/a/o5/e1$a;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/o5/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Le/m/f/a/o;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-super {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/f/a/o;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Le/m/f/a/o;->a:Z

    .line 3
    iput v1, v0, Le/m/f/a/o;->b:I

    .line 4
    iput-boolean v1, v0, Le/m/f/a/o;->c:Z

    const-wide/16 v2, 0x0

    .line 5
    iput-wide v2, v0, Le/m/f/a/o;->d:J

    .line 6
    iput-boolean v1, v0, Le/m/f/a/o;->e:Z

    const-string v2, ""

    .line 7
    iput-object v2, v0, Le/m/f/a/o;->f:Ljava/lang/String;

    .line 8
    iput-boolean v1, v0, Le/m/f/a/o;->g:Z

    .line 9
    iput-boolean v1, v0, Le/m/f/a/o;->h:Z

    .line 10
    iput-boolean v1, v0, Le/m/f/a/o;->i:Z

    const/4 v3, 0x1

    .line 11
    iput v3, v0, Le/m/f/a/o;->j:I

    .line 12
    iput-boolean v1, v0, Le/m/f/a/o;->k:Z

    .line 13
    iput-object v2, v0, Le/m/f/a/o;->l:Ljava/lang/String;

    .line 14
    invoke-virtual {v0}, Le/m/f/a/o;->a()Le/m/f/a/o;

    .line 15
    iput-boolean v1, v0, Le/m/f/a/o;->o:Z

    .line 16
    iput-object v2, v0, Le/m/f/a/o;->p:Ljava/lang/String;

    return-object v0
.end method

.method public initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Le/m/f/a/o;

    invoke-direct {v0}, Le/m/f/a/o;-><init>()V

    return-object v0
.end method
