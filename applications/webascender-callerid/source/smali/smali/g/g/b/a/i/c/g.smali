.class public final Lg/g/b/a/i/c/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Landroid/app/job/JobScheduler;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Landroid/app/job/JobScheduler;
    .locals 1

    .line 1
    invoke-static {p0}, Lg/g/b/a/i/c/f;->a(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/app/job/JobScheduler;

    return-object p0
.end method
