.class final Lg/f/a/d/c/l/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/a/d/d/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/a/d/c/l/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final f:Lcom/google/android/gms/common/api/Status;

.field private final g:Lg/f/a/d/d/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lg/f/a/d/d/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/f/a/d/c/l/j$a;->f:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lg/f/a/d/c/l/j$a;->g:Lg/f/a/d/d/g;

    return-void
.end method


# virtual methods
.method public final b1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/f/a/d/c/l/j$a;->g:Lg/f/a/d/d/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lg/f/a/d/d/g;->b1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lg/f/a/d/c/l/j$a;->f:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
