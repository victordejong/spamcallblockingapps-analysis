.class Lg/f/c/a/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/c/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyFormatProtoT::",
        "Lcom/google/protobuf/r0;",
        "KeyProtoT::",
        "Lcom/google/protobuf/r0;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lg/f/c/a/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/f/c/a/i$a<",
            "TKeyFormatProtoT;TKeyProtoT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lg/f/c/a/i$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/f/c/a/i$a<",
            "TKeyFormatProtoT;TKeyProtoT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/f/c/a/h$a;->a:Lg/f/c/a/i$a;

    return-void
.end method

.method private b(Lcom/google/protobuf/r0;)Lcom/google/protobuf/r0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyFormatProtoT;)TKeyProtoT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/f/c/a/h$a;->a:Lg/f/c/a/i$a;

    invoke-virtual {v0, p1}, Lg/f/c/a/i$a;->d(Lcom/google/protobuf/r0;)V

    .line 2
    iget-object v0, p0, Lg/f/c/a/h$a;->a:Lg/f/c/a/i$a;

    invoke-virtual {v0, p1}, Lg/f/c/a/i$a;->a(Lcom/google/protobuf/r0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/r0;

    return-object p1
.end method


# virtual methods
.method a(Lcom/google/protobuf/i;)Lcom/google/protobuf/r0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/i;",
            ")TKeyProtoT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/f/c/a/h$a;->a:Lg/f/c/a/i$a;

    invoke-virtual {v0, p1}, Lg/f/c/a/i$a;->c(Lcom/google/protobuf/i;)Lcom/google/protobuf/r0;

    move-result-object p1

    invoke-direct {p0, p1}, Lg/f/c/a/h$a;->b(Lcom/google/protobuf/r0;)Lcom/google/protobuf/r0;

    move-result-object p1

    return-object p1
.end method
