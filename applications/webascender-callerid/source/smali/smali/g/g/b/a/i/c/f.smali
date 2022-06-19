.class public abstract Lg/g/b/a/i/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/b/a/i/c/f$a;
    }
.end annotation


# static fields
.field public static final a:Lg/g/b/a/i/c/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/g/b/a/i/c/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/g/b/a/i/c/f$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lg/g/b/a/i/c/f;->a:Lg/g/b/a/i/c/f$a;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Landroid/app/job/JobScheduler;
    .locals 1

    sget-object v0, Lg/g/b/a/i/c/f;->a:Lg/g/b/a/i/c/f$a;

    invoke-virtual {v0, p0}, Lg/g/b/a/i/c/f$a;->a(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object p0

    return-object p0
.end method
