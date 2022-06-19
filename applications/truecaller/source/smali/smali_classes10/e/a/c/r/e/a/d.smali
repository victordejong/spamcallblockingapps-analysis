.class public final Le/a/c/r/e/a/d;
.super Le/q/a/d/a;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Long;

.field public c:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/q/a/d/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/c/r/e/a/d;->a:Ljava/lang/Long;

    .line 3
    iput-object v0, p0, Le/a/c/r/e/a/d;->b:Ljava/lang/Long;

    .line 4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Le/a/c/r/e/a/d;->c:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/r/e/a/d;->c:Ljava/util/Date;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :goto_0
    return-object v0
.end method
