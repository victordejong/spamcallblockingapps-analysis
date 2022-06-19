.class public abstract Ls1/a/a/a/v0/h/h$b;
.super Ls1/a/a/a/v0/h/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/h/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Ls1/a/a/a/v0/h/h;",
        "BuilderType:",
        "Ls1/a/a/a/v0/h/h$b;",
        ">",
        "Ls1/a/a/a/v0/h/a$a<",
        "TBuilderType;>;"
    }
.end annotation


# instance fields
.field public a:Ls1/a/a/a/v0/h/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/h/a$a;-><init>()V

    .line 2
    sget-object v0, Ls1/a/a/a/v0/h/c;->a:Ls1/a/a/a/v0/h/c;

    iput-object v0, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    return-void
.end method


# virtual methods
.method public c()Ls1/a/a/a/v0/h/h$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/h$b;->c()Ls1/a/a/a/v0/h/h$b;

    move-result-object v0

    return-object v0
.end method

.method public abstract e(Ls1/a/a/a/v0/h/h;)Ls1/a/a/a/v0/h/h$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method
