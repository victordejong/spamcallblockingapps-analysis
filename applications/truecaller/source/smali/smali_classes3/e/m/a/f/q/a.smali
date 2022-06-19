.class public final Le/m/a/f/q/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/gms/tasks/OnTokenCanceledListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/q/a;->a:Lcom/google/android/gms/tasks/OnTokenCanceledListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Le/m/a/f/q/a;->a:Lcom/google/android/gms/tasks/OnTokenCanceledListener;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/tasks/OnTokenCanceledListener;->onCanceled()V

    return-void
.end method
