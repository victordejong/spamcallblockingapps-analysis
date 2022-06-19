.class public Lg/f/c/a/s;
.super Lg/f/c/a/h;
.source "SourceFile"

# interfaces
.implements Lg/f/c/a/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PrimitiveT:",
        "Ljava/lang/Object;",
        "KeyProtoT::",
        "Lcom/google/protobuf/r0;",
        "PublicKeyProtoT::",
        "Lcom/google/protobuf/r0;",
        ">",
        "Lg/f/c/a/h<",
        "TPrimitiveT;TKeyProtoT;>;",
        "Ljava/lang/Object<",
        "TPrimitiveT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lg/f/c/a/t;Lg/f/c/a/i;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/f/c/a/t<",
            "TKeyProtoT;TPublicKeyProtoT;>;",
            "Lg/f/c/a/i<",
            "TPublicKeyProtoT;>;",
            "Ljava/lang/Class<",
            "TPrimitiveT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lg/f/c/a/h;-><init>(Lg/f/c/a/i;Ljava/lang/Class;)V

    return-void
.end method
