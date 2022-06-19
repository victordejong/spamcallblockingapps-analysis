.class public Ls1/a/a/a/v0/h/j;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field public a:Ls1/a/a/a/v0/h/p;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    return-void
.end method

.method public static a()Ls1/a/a/a/v0/h/j;
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/h/j;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Ls1/a/a/a/v0/h/j;
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/h/j;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static d()Ls1/a/a/a/v0/h/j;
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/h/j;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public c(Ls1/a/a/a/v0/h/p;)Ls1/a/a/a/v0/h/j;
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    return-object p0
.end method
