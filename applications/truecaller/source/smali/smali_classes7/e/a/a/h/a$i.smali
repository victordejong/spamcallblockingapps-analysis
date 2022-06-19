.class public final Le/a/a/h/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/h/a;->Va(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/h/a;


# direct methods
.method public constructor <init>(Le/a/a/h/a;)V
    .locals 0

    iput-object p1, p0, Le/a/a/h/a$i;->a:Le/a/a/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/h/a$i;->a:Le/a/a/h/a;

    invoke-virtual {v0}, Le/a/a/h/a;->PA()Le/a/a/h/g;

    move-result-object v0

    invoke-interface {v0, p2}, Le/a/a/h/g;->ih(I)V

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
