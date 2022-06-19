.class public final Lp3/a/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/p0$b;,
        Lp3/a/p0$c;,
        Lp3/a/p0$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lp3/a/p0$d;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lp3/a/p0$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/p0$c<",
            "TReqT;>;"
        }
    .end annotation
.end field

.field public final e:Lp3/a/p0$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/p0$c<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/Object;

.field public final g:Z

.field public final h:Z

.field public final i:Z


# direct methods
.method public constructor <init>(Lp3/a/p0$d;Ljava/lang/String;Lp3/a/p0$c;Lp3/a/p0$c;Ljava/lang/Object;ZZZLp3/a/p0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p5, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 p9, 0x2

    invoke-direct {p5, p9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    const-string p5, "type"

    .line 3
    invoke-static {p1, p5}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp3/a/p0;->a:Lp3/a/p0$d;

    const-string p1, "fullMethodName"

    .line 4
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lp3/a/p0;->b:Ljava/lang/String;

    .line 5
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x2f

    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const/4 p5, 0x0

    const/4 p9, -0x1

    if-ne p1, p9, :cond_0

    move-object p1, p5

    goto :goto_0

    :cond_0
    const/4 p9, 0x0

    .line 6
    invoke-virtual {p2, p9, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 7
    :goto_0
    iput-object p1, p0, Lp3/a/p0;->c:Ljava/lang/String;

    const-string p1, "requestMarshaller"

    .line 8
    invoke-static {p3, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lp3/a/p0;->d:Lp3/a/p0$c;

    const-string p1, "responseMarshaller"

    .line 9
    invoke-static {p4, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lp3/a/p0;->e:Lp3/a/p0$c;

    .line 10
    iput-object p5, p0, Lp3/a/p0;->f:Ljava/lang/Object;

    .line 11
    iput-boolean p6, p0, Lp3/a/p0;->g:Z

    .line 12
    iput-boolean p7, p0, Lp3/a/p0;->h:Z

    .line 13
    iput-boolean p8, p0, Lp3/a/p0;->i:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fullServiceName"

    invoke-static {p0, v1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "methodName"

    .line 2
    invoke-static {p1, p0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lp3/a/p0$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">()",
            "Lp3/a/p0$b<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lp3/a/p0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp3/a/p0$b;-><init>(Lp3/a/p0$a;)V

    .line 2
    iput-object v1, v0, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    .line 3
    iput-object v1, v0, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/p0;->d:Lp3/a/p0$c;

    invoke-interface {v0, p1}, Lp3/a/p0$c;->a(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Ln3/g0/y;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lp3/a/p0;->b:Ljava/lang/String;

    const-string v2, "fullMethodName"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 3
    iget-object v1, p0, Lp3/a/p0;->a:Lp3/a/p0$d;

    const-string v2, "type"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 5
    iget-boolean v1, p0, Lp3/a/p0;->g:Z

    const-string v2, "idempotent"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-boolean v1, p0, Lp3/a/p0;->h:Z

    const-string v2, "safe"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-boolean v1, p0, Lp3/a/p0;->i:Z

    const-string v2, "sampledToLocalTracing"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lp3/a/p0;->d:Lp3/a/p0$c;

    const-string v2, "requestMarshaller"

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 10
    iget-object v1, p0, Lp3/a/p0;->e:Lp3/a/p0$c;

    const-string v2, "responseMarshaller"

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 12
    iget-object v1, p0, Lp3/a/p0;->f:Ljava/lang/Object;

    const-string v2, "schemaDescriptor"

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lcom/google/common/base/MoreObjects$ToStringHelper;->omitNullValues:Z

    .line 15
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
