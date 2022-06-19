.class public final Le/a/a/g1/c$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCanceledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/g1/c;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls1/w/d;


# direct methods
.method public constructor <init>(Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/g1/c$k;->a:Ls1/w/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/g1/c$k;->a:Ls1/w/d;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    return-void
.end method
