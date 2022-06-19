.class public Lcom/clevertap/android/sdk/inbox/CTInboxActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/clevertap/android/sdk/inbox/CTInboxActivity;


# direct methods
.method public constructor <init>(Lcom/clevertap/android/sdk/inbox/CTInboxActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity$b;->a:Lcom/clevertap/android/sdk/inbox/CTInboxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity$b;->a:Lcom/clevertap/android/sdk/inbox/CTInboxActivity;

    iget-object v0, v0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->a:Le/h/a/c/r0/l;

    .line 2
    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$g;->d:I

    .line 3
    iget-object v0, v0, Le/h/a/c/r0/l;->h:[Landroidx/fragment/app/Fragment;

    aget-object p1, v0, p1

    .line 4
    check-cast p1, Le/h/a/c/r0/i;

    .line 5
    iget-object p1, p1, Le/h/a/c/r0/i;->e:Le/h/a/c/k0/a;

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p1, Le/h/a/c/k0/a;->d:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p1, Le/h/a/c/k0/a;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Le/h/a/c/k0/a;->e(Landroid/content/Context;)V

    .line 8
    invoke-virtual {p1}, Le/h/a/c/k0/a;->f()V

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity$b;->a:Lcom/clevertap/android/sdk/inbox/CTInboxActivity;

    iget-object v0, v0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity;->a:Le/h/a/c/r0/l;

    .line 2
    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$g;->d:I

    .line 3
    iget-object v0, v0, Le/h/a/c/r0/l;->h:[Landroidx/fragment/app/Fragment;

    aget-object p1, v0, p1

    .line 4
    check-cast p1, Le/h/a/c/r0/i;

    .line 5
    iget-object p1, p1, Le/h/a/c/r0/i;->e:Le/h/a/c/k0/a;

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p1, Le/h/a/c/k0/a;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public c(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0

    return-void
.end method
