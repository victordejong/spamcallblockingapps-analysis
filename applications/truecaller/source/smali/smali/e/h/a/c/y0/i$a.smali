.class public Le/h/a/c/y0/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/y0/i;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Le/h/a/c/y0/i;


# direct methods
.method public constructor <init>(Le/h/a/c/y0/i;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/y0/i$a;->b:Le/h/a/c/y0/i;

    iput-object p2, p0, Le/h/a/c/y0/i$a;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/h/a/c/y0/i$a;->b:Le/h/a/c/y0/i;

    .line 2
    iget-object v0, v0, Le/h/a/c/y0/i;->b:Le/h/a/c/y0/g;

    .line 3
    iget-object v1, p0, Le/h/a/c/y0/i$a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Le/h/a/c/y0/g;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
