.class public final Le/a/c/a/p/d/q/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/p/d/q/a;->R4(Le/a/c/a/p/c/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/p/d/q/a;

.field public final synthetic b:Le/a/c/a/p/c/d;


# direct methods
.method public constructor <init>(Le/a/c/a/p/d/q/a;Le/a/c/a/p/c/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/d/q/a$a;->a:Le/a/c/a/p/d/q/a;

    iput-object p2, p0, Le/a/c/a/p/d/q/a$a;->b:Le/a/c/a/p/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/c/a/p/d/q/a$a;->a:Le/a/c/a/p/d/q/a;

    iget-object v0, p0, Le/a/c/a/p/d/q/a$a;->b:Le/a/c/a/p/c/d;

    invoke-virtual {p1, v0}, Le/a/c/a/p/d/q/a;->S4(Le/a/c/a/p/c/d;)V

    return-void
.end method
