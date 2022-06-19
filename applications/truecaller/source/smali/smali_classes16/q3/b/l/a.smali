.class public abstract Lq3/b/l/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq3/b/l/a$a;
    }
.end annotation


# static fields
.field public static final b:Lq3/b/l/a$a;


# instance fields
.field public final a:Lq3/b/l/l/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq3/b/l/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq3/b/l/a$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lq3/b/l/a;->b:Lq3/b/l/a$a;

    return-void
.end method

.method public constructor <init>(Lq3/b/l/l/c;Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/b/l/a;->a:Lq3/b/l/l/c;

    return-void
.end method


# virtual methods
.method public final a(Lq3/b/a;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq3/b/a<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lq3/b/l/l/h;

    invoke-direct {v0, p2}, Lq3/b/l/l/h;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p2, Lq3/b/l/l/o;

    sget-object v1, Lq3/b/l/l/r;->e:Lq3/b/l/l/r;

    invoke-direct {p2, p0, v1, v0}, Lq3/b/l/l/o;-><init>(Lq3/b/l/a;Lq3/b/l/l/r;Lq3/b/l/l/h;)V

    .line 3
    invoke-virtual {p2, p1}, Lq3/b/l/l/o;->w(Lq3/b/a;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    iget-byte p2, v0, Lq3/b/l/l/h;->b:B

    const/16 v1, 0xc

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Reader has not consumed the whole input: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final b(Lq3/b/g;Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq3/b/g<",
            "-TT;>;TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Lq3/b/l/l/p;

    .line 3
    sget-object v2, Lq3/b/l/l/r;->e:Lq3/b/l/l/r;

    .line 4
    invoke-static {}, Lq3/b/l/l/r;->values()[Lq3/b/l/l/r;

    const/4 v3, 0x4

    new-array v3, v3, [Lq3/b/l/f;

    const-string v4, "output"

    .line 5
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "json"

    invoke-static {p0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "mode"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "modeReuseCache"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v4, Lq3/b/l/l/p$a;

    invoke-direct {v4, v0, p0}, Lq3/b/l/l/p$a;-><init>(Ljava/lang/StringBuilder;Lq3/b/l/a;)V

    invoke-direct {v1, v4, p0, v2, v3}, Lq3/b/l/l/p;-><init>(Lq3/b/l/l/p$a;Lq3/b/l/a;Lq3/b/l/l/r;[Lq3/b/l/f;)V

    .line 7
    invoke-virtual {v1, p1, p2}, Lq3/b/l/l/p;->d(Lq3/b/g;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "result.toString()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
