.class public final synthetic Le/m/d/w/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/d/w/h;


# direct methods
.method public synthetic constructor <init>(Le/m/d/w/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/w/b;->a:Le/m/d/w/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/m/d/w/b;->a:Le/m/d/w/h;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Le/m/d/w/h;->c(Z)V

    return-void
.end method
