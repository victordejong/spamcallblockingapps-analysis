.class public final synthetic Le/m/h/a/d/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/h/a/d/t;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Le/m/h/a/d/t;->a:Ljava/lang/Runnable;

    .line 1
    invoke-static {v0}, Le/m/h/a/d/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method
