.class final Lg/f/a/d/c/l/l;
.super Lg/f/a/d/c/l/d;
.source "SourceFile"


# instance fields
.field private final synthetic a:Lg/f/a/d/c/l/j$b;


# direct methods
.method constructor <init>(Lg/f/a/d/c/l/j$b;)V
    .locals 0

    iput-object p1, p0, Lg/f/a/d/c/l/l;->a:Lg/f/a/d/c/l/j$b;

    invoke-direct {p0}, Lg/f/a/d/c/l/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final c0(Lcom/google/android/gms/common/api/Status;Lg/f/a/d/d/g;)V
    .locals 2

    iget-object v0, p0, Lg/f/a/d/c/l/l;->a:Lg/f/a/d/c/l/j$b;

    new-instance v1, Lg/f/a/d/c/l/j$a;

    invoke-direct {v1, p1, p2}, Lg/f/a/d/c/l/j$a;-><init>(Lcom/google/android/gms/common/api/Status;Lg/f/a/d/d/g;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->i(Lcom/google/android/gms/common/api/i;)V

    return-void
.end method
