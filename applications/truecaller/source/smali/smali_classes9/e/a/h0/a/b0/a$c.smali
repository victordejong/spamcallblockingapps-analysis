.class public final Le/a/h0/a/b0/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h0/a/b0/a;->C7(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h0/a/b0/a;


# direct methods
.method public constructor <init>(Le/a/h0/a/b0/a;)V
    .locals 0

    iput-object p1, p0, Le/a/h0/a/b0/a$c;->a:Le/a/h0/a/b0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Le/a/h0/a/b0/a$c;->a:Le/a/h0/a/b0/a;

    invoke-virtual {p1}, Le/a/h0/a/b0/a;->OA()Le/a/h0/a/b0/c;

    move-result-object p1

    invoke-virtual {p1}, Le/a/h0/a/b0/c;->Ij()V

    return-void
.end method
