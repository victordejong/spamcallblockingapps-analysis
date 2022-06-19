.class public final Ls1/a/a/a/v0/d/b/w/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/d/b/w/a$a;
    }
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/v0/d/b/w/a$a;

.field public final b:Ls1/a/a/a/v0/e/a0/b/f;

.field public final c:[Ljava/lang/String;

.field public final d:[Ljava/lang/String;

.field public final e:[Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/b/w/a$a;Ls1/a/a/a/v0/e/a0/b/f;Ls1/a/a/a/v0/e/a0/b/c;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    const-string p9, "kind"

    invoke-static {p1, p9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "metadataVersion"

    invoke-static {p2, p9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "bytecodeVersion"

    invoke-static {p3, p9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/b/w/a;->a:Ls1/a/a/a/v0/d/b/w/a$a;

    iput-object p2, p0, Ls1/a/a/a/v0/d/b/w/a;->b:Ls1/a/a/a/v0/e/a0/b/f;

    iput-object p4, p0, Ls1/a/a/a/v0/d/b/w/a;->c:[Ljava/lang/String;

    iput-object p5, p0, Ls1/a/a/a/v0/d/b/w/a;->d:[Ljava/lang/String;

    iput-object p6, p0, Ls1/a/a/a/v0/d/b/w/a;->e:[Ljava/lang/String;

    iput-object p7, p0, Ls1/a/a/a/v0/d/b/w/a;->f:Ljava/lang/String;

    iput p8, p0, Ls1/a/a/a/v0/d/b/w/a;->g:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/w/a;->f:Ljava/lang/String;

    iget-object v1, p0, Ls1/a/a/a/v0/d/b/w/a;->a:Ls1/a/a/a/v0/d/b/w/a$a;

    sget-object v2, Ls1/a/a/a/v0/d/b/w/a$a;->g:Ls1/a/a/a/v0/d/b/w/a$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ls1/a/a/a/v0/d/b/w/a;->a:Ls1/a/a/a/v0/d/b/w/a$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls1/a/a/a/v0/d/b/w/a;->b:Ls1/a/a/a/v0/e/a0/b/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
