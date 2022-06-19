.class public Lcom/clevertap/android/sdk/inbox/CTInboxActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity$a;->a:Lcom/clevertap/android/sdk/inbox/CTInboxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/clevertap/android/sdk/inbox/CTInboxActivity$a;->a:Lcom/clevertap/android/sdk/inbox/CTInboxActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
