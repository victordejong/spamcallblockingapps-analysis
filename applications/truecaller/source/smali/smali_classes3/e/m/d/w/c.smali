.class public final synthetic Le/m/d/w/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/d/w/h;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Le/m/d/w/h;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/w/c;->a:Le/m/d/w/h;

    iput-boolean p2, p0, Le/m/d/w/c;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/m/d/w/c;->a:Le/m/d/w/h;

    iget-boolean v1, p0, Le/m/d/w/c;->b:Z

    .line 1
    invoke-virtual {v0, v1}, Le/m/d/w/h;->c(Z)V

    return-void
.end method
