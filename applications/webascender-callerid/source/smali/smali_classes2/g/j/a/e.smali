.class public final Lg/j/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/j/a/e$b;
    }
.end annotation


# instance fields
.field private final a:Lg/j/a/c;

.field private final b:Ljava/lang/String;

.field private final c:Lg/j/a/b;

.field private final d:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lg/j/a/e$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lg/j/a/e$b;->a(Lg/j/a/e$b;)Lg/j/a/c;

    move-result-object v0

    iput-object v0, p0, Lg/j/a/e;->a:Lg/j/a/c;

    .line 4
    invoke-static {p1}, Lg/j/a/e$b;->b(Lg/j/a/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/j/a/e;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lg/j/a/e$b;->c(Lg/j/a/e$b;)Lg/j/a/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lg/j/a/b$b;->c()Lg/j/a/b;

    move-result-object v0

    iput-object v0, p0, Lg/j/a/e;->c:Lg/j/a/b;

    .line 6
    invoke-static {p1}, Lg/j/a/e$b;->d(Lg/j/a/e$b;)Lg/j/a/f;

    .line 7
    invoke-static {p1}, Lg/j/a/e$b;->e(Lg/j/a/e$b;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lg/j/a/e$b;->e(Lg/j/a/e$b;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    iput-object p1, p0, Lg/j/a/e;->d:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lg/j/a/e$b;Lg/j/a/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/j/a/e;-><init>(Lg/j/a/e$b;)V

    return-void
.end method


# virtual methods
.method public a()Lg/j/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/j/a/e;->c:Lg/j/a/b;

    return-object v0
.end method

.method public b()Lg/j/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/j/a/e;->a:Lg/j/a/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/j/a/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/j/a/e;->a:Lg/j/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/j/a/e;->d:Ljava/lang/Object;

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
