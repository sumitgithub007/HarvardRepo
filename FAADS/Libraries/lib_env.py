
urls = {
        "stage_faads": "https://faads.stage.faoapps.fas.harvard.edu/"
}


def get_app_url(env):
    env_url = env.lower() + "_" + "faads"
    if env_url in urls:
        return urls[env_url]
    else:
        return "https://harvard.edu"
