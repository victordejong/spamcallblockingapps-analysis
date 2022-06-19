.class abstract Lg/f/a/d/c/l/j$b;
.super Lg/f/a/d/c/l/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/a/d/c/l/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/a/d/c/l/e<",
        "Lg/f/a/d/d/e;",
        ">;"
    }
.end annotation


# instance fields
.field protected s:Lg/f/a/d/c/l/f;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/f/a/d/c/l/e;-><init>(Lcom/google/android/gms/common/api/d;)V

    new-instance p1, Lg/f/a/d/c/l/l;

    invoke-direct {p1, p0}, Lg/f/a/d/c/l/l;-><init>(Lg/f/a/d/c/l/j$b;)V

    iput-object p1, p0, Lg/f/a/d/c/l/j$b;->s:Lg/f/a/d/c/l/f;

    return-void
.end method


# virtual methods
.method protected synthetic f(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/i;
    .locals 2

    new-instance v0, Lg/f/a/d/c/l/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lg/f/a/d/c/l/j$a;-><init>(Lcom/google/android/gms/common/api/Status;Lg/f/a/d/d/g;)V

    return-object v0
.end method
