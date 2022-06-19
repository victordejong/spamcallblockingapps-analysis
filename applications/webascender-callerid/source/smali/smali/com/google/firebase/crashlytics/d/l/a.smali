.class final synthetic Lcom/google/firebase/crashlytics/d/l/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/a/b/h;


# instance fields
.field private final a:Lcom/google/android/gms/tasks/h;

.field private final b:Lcom/google/firebase/crashlytics/d/g/o;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tasks/h;Lcom/google/firebase/crashlytics/d/g/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/l/a;->a:Lcom/google/android/gms/tasks/h;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/l/a;->b:Lcom/google/firebase/crashlytics/d/g/o;

    return-void
.end method

.method public static b(Lcom/google/android/gms/tasks/h;Lcom/google/firebase/crashlytics/d/g/o;)Lg/f/a/b/h;
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/d/l/a;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/crashlytics/d/l/a;-><init>(Lcom/google/android/gms/tasks/h;Lcom/google/firebase/crashlytics/d/g/o;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/l/a;->a:Lcom/google/android/gms/tasks/h;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/l/a;->b:Lcom/google/firebase/crashlytics/d/g/o;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/crashlytics/d/l/c;->b(Lcom/google/android/gms/tasks/h;Lcom/google/firebase/crashlytics/d/g/o;Ljava/lang/Exception;)V

    return-void
.end method
