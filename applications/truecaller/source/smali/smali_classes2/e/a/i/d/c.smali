.class public final Le/a/i/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/d/b;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public E3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Le/a/i/d/c;->a:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/i/d/c;->b:Ljava/lang/String;

    return-void
.end method

.method public F3()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/d/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 v1, 0x5f

    invoke-static {v0, v1}, Le/d/c/a/a;->D(Ljava/lang/String;C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/a/i/d/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public G3(Ljava/lang/String;)V
    .locals 1

    const-string v0, "adPlacement"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Le/a/i/d/c;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/a/i/d/c;->a:I

    .line 2
    iput-object p1, p0, Le/a/i/d/c;->b:Ljava/lang/String;

    return-void
.end method
