.class Lg/f/c/a/f0/c1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/a0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/c/a/f0/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/a0$d<",
        "Lg/f/c/a/f0/c1;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Lcom/google/protobuf/a0$c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg/f/c/a/f0/c1$a;->b(I)Lg/f/c/a/f0/c1;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lg/f/c/a/f0/c1;
    .locals 0

    .line 1
    invoke-static {p1}, Lg/f/c/a/f0/c1;->forNumber(I)Lg/f/c/a/f0/c1;

    move-result-object p1

    return-object p1
.end method
