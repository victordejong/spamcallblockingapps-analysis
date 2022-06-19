.class public final Le/a/s/m/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/s/m/b;->cg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/s/m/b;


# direct methods
.method public constructor <init>(Le/a/s/m/b;)V
    .locals 0

    iput-object p1, p0, Le/a/s/m/b$e;->a:Le/a/s/m/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/s/m/b$e;->a:Le/a/s/m/b;

    invoke-virtual {p1}, Le/a/s/m/b;->PA()Le/a/s/m/c;

    move-result-object p1

    invoke-interface {p1}, Le/a/s/m/c;->h7()V

    return-void
.end method
