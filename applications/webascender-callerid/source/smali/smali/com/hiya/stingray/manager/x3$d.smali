.class final Lcom/hiya/stingray/manager/x3$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/x3;->f(Ljava/lang/Long;)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/manager/x3;

.field final synthetic b:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/x3;Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/x3$d;->a:Lcom/hiya/stingray/manager/x3;

    iput-object p2, p0, Lcom/hiya/stingray/manager/x3$d;->b:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3$d;->a:Lcom/hiya/stingray/manager/x3;

    iget-object v1, p0, Lcom/hiya/stingray/manager/x3$d;->b:Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/hiya/stingray/manager/x3;->a(Lcom/hiya/stingray/manager/x3;Ljava/lang/Long;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/manager/x3$d$a;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/manager/x3$d$a;-><init>(Lcom/hiya/stingray/manager/x3$d;Li/c/b0/b/f;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/g;->d(Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/manager/x3$d$b;

    invoke-direct {v1, p1}, Lcom/hiya/stingray/manager/x3$d$b;-><init>(Li/c/b0/b/f;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/g;->f(Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/g;

    return-void
.end method
