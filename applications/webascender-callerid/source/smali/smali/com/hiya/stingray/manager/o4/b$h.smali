.class final Lcom/hiya/stingray/manager/o4/b$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/o4/b;->g()Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/b/y<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/manager/o4/b;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/o4/b;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/o4/b$h;->a:Lcom/hiya/stingray/manager/o4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/x;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/x<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o4/b$h;->a:Lcom/hiya/stingray/manager/o4/b;

    invoke-static {v0}, Lcom/hiya/stingray/manager/o4/b;->a(Lcom/hiya/stingray/manager/o4/b;)Lcom/google/android/gms/location/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/a;->s()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/manager/o4/b$h$a;

    invoke-direct {v1, p1}, Lcom/hiya/stingray/manager/o4/b$h$a;-><init>(Li/c/b0/b/x;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/g;->h(Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/g;

    .line 3
    new-instance v1, Lcom/hiya/stingray/manager/o4/b$h$b;

    invoke-direct {v1, p1}, Lcom/hiya/stingray/manager/o4/b$h$b;-><init>(Li/c/b0/b/x;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/g;->f(Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/g;

    .line 4
    new-instance v1, Lcom/hiya/stingray/manager/o4/b$h$c;

    invoke-direct {v1, p1}, Lcom/hiya/stingray/manager/o4/b$h$c;-><init>(Li/c/b0/b/x;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/g;->d(Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/g;

    return-void
.end method
