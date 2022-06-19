.class public final Le/a/a/b/a$t;
.super Lcom/google/android/material/snackbar/Snackbar$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/b/a;->Rd(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/b/a;


# direct methods
.method public constructor <init>(Le/a/a/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/a/b/a$t;->a:Le/a/a/b/a;

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/snackbar/Snackbar$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/a/b/a$t;->a:Le/a/a/b/a;

    invoke-virtual {p1}, Le/a/a/b/a;->QA()Le/a/a/b/p;

    move-result-object p1

    invoke-interface {p1}, Le/a/a/b/p;->dn()V

    :cond_0
    return-void
.end method
