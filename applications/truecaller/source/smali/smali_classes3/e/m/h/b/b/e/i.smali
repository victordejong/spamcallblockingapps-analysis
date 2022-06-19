.class public final synthetic Le/m/h/b/b/e/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Le/m/h/b/b/e/e;


# direct methods
.method public constructor <init>(Le/m/h/b/b/e/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/h/b/b/e/i;->a:Le/m/h/b/b/e/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Le/m/h/b/b/e/i;->a:Le/m/h/b/b/e/e;

    invoke-virtual {v0}, Le/m/h/b/b/e/e;->c()V

    return-void
.end method
