.class public final Le/a/g/a/b/a$l;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/b/a;->m8(Le/a/g/a/b/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/g/a/b/s;


# direct methods
.method public constructor <init>(Le/a/g/a/b/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/g/a/b/a$l;->a:Le/a/g/a/b/s;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissSucceeded()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissSucceeded()V

    .line 2
    iget-object v0, p0, Le/a/g/a/b/a$l;->a:Le/a/g/a/b/s;

    invoke-interface {v0}, Le/a/g/a/b/s;->a()V

    return-void
.end method
