.class Lcom/google/firebase/crashlytics/d/g/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/d/g/l;->h(Lcom/google/firebase/crashlytics/d/m/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/google/firebase/crashlytics/d/m/e;

.field final synthetic g:Lcom/google/firebase/crashlytics/d/g/l;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/d/g/l;Lcom/google/firebase/crashlytics/d/m/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/g/l$b;->g:Lcom/google/firebase/crashlytics/d/g/l;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/g/l$b;->f:Lcom/google/firebase/crashlytics/d/m/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/l$b;->g:Lcom/google/firebase/crashlytics/d/g/l;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/g/l$b;->f:Lcom/google/firebase/crashlytics/d/m/e;

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/d/g/l;->a(Lcom/google/firebase/crashlytics/d/g/l;Lcom/google/firebase/crashlytics/d/m/e;)Lcom/google/android/gms/tasks/g;

    return-void
.end method
