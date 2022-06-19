.class public Lg/f/c/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/c/a/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/f/c/a/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PrimitiveT:",
        "Ljava/lang/Object;",
        "KeyProtoT::",
        "Lcom/google/protobuf/r0;",
        ">",
        "Ljava/lang/Object;",
        "Lg/f/c/a/g<",
        "TPrimitiveT;>;"
    }
.end annotation


# instance fields
.field private final a:Lg/f/c/a/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/f/c/a/i<",
            "TKeyProtoT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TPrimitiveT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/f/c/a/i;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/f/c/a/i<",
            "TKeyProtoT;>;",
            "Ljava/lang/Class<",
            "TPrimitiveT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lg/f/c/a/i;->h()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Void;

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Given internalKeyMananger %s does not support primitive class %s"

    .line 6
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    :goto_0
    iput-object p1, p0, Lg/f/c/a/h;->a:Lg/f/c/a/i;

    .line 8
    iput-object p2, p0, Lg/f/c/a/h;->b:Ljava/lang/Class;

    return-void
.end method

.method private f()Lg/f/c/a/h$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/f/c/a/h$a<",
            "*TKeyProtoT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/c/a/h$a;

    iget-object v1, p0, Lg/f/c/a/h;->a:Lg/f/c/a/i;

    invoke-virtual {v1}, Lg/f/c/a/i;->e()Lg/f/c/a/i$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lg/f/c/a/h$a;-><init>(Lg/f/c/a/i$a;)V

    return-object v0
.end method

.method private g(Lcom/google/protobuf/r0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyProtoT;)TPrimitiveT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Void;

    iget-object v1, p0, Lg/f/c/a/h;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/f/c/a/h;->a:Lg/f/c/a/i;

    invoke-virtual {v0, p1}, Lg/f/c/a/i;->i(Lcom/google/protobuf/r0;)V

    .line 3
    iget-object v0, p0, Lg/f/c/a/h;->a:Lg/f/c/a/i;

    iget-object v1, p0, Lg/f/c/a/h;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lg/f/c/a/i;->d(Lcom/google/protobuf/r0;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Cannot create a primitive for Void"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/f/c/a/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/google/protobuf/i;)Lcom/google/protobuf/r0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lg/f/c/a/h;->f()Lg/f/c/a/h$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/f/c/a/h$a;->a(Lcom/google/protobuf/i;)Lcom/google/protobuf/r0;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failures parsing proto of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg/f/c/a/h;->a:Lg/f/c/a/i;

    .line 3
    invoke-virtual {v2}, Lg/f/c/a/i;->e()Lg/f/c/a/i$a;

    move-result-object v2

    invoke-virtual {v2}, Lg/f/c/a/i$a;->b()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final c(Lcom/google/protobuf/i;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/i;",
            ")TPrimitiveT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lg/f/c/a/h;->a:Lg/f/c/a/i;

    invoke-virtual {v0, p1}, Lg/f/c/a/i;->g(Lcom/google/protobuf/i;)Lcom/google/protobuf/r0;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lg/f/c/a/h;->g(Lcom/google/protobuf/r0;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failures parsing proto of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg/f/c/a/h;->a:Lg/f/c/a/i;

    .line 4
    invoke-virtual {v2}, Lg/f/c/a/i;->b()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final d(Lcom/google/protobuf/i;)Lg/f/c/a/f0/s0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lg/f/c/a/h;->f()Lg/f/c/a/h$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/f/c/a/h$a;->a(Lcom/google/protobuf/i;)Lcom/google/protobuf/r0;

    move-result-object p1

    .line 2
    invoke-static {}, Lg/f/c/a/f0/s0;->e0()Lg/f/c/a/f0/s0$b;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lg/f/c/a/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/f/c/a/f0/s0$b;->H(Ljava/lang/String;)Lg/f/c/a/f0/s0$b;

    .line 4
    invoke-interface {p1}, Lcom/google/protobuf/r0;->i()Lcom/google/protobuf/i;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/f/c/a/f0/s0$b;->I(Lcom/google/protobuf/i;)Lg/f/c/a/f0/s0$b;

    iget-object p1, p0, Lg/f/c/a/h;->a:Lg/f/c/a/i;

    .line 5
    invoke-virtual {p1}, Lg/f/c/a/i;->f()Lg/f/c/a/f0/s0$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/f/c/a/f0/s0$b;->G(Lg/f/c/a/f0/s0$c;)Lg/f/c/a/f0/s0$b;

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p1

    check-cast p1, Lg/f/c/a/f0/s0;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Unexpected proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/c/a/h;->a:Lg/f/c/a/i;

    invoke-virtual {v0}, Lg/f/c/a/i;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
