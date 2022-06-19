.class final synthetic Lcom/google/firebase/iid/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/a;


# instance fields
.field private final a:Lcom/google/firebase/iid/v;

.field private final b:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/v;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/u;->a:Lcom/google/firebase/iid/v;

    iput-object p2, p0, Lcom/google/firebase/iid/u;->b:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/iid/u;->a:Lcom/google/firebase/iid/v;

    iget-object v1, p0, Lcom/google/firebase/iid/u;->b:Landroid/util/Pair;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/iid/v;->b(Landroid/util/Pair;Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/g;

    return-object p1
.end method
